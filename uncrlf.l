/*
 * Copyright (C) 2022 Kevin Matthes
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

/**
 * \author      Kevin Matthes
 * \brief       A simple lexer which removes tab characters from a given file.
 * \copyright   (C) 2022 Kevin Matthes.
 *              This file is licensed GPL 2 as of June 1991.
 * \date        2022
 * \file        uncrlf.l
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 */

/******************************************************************************/

%% /***************************************************************************/

"\r\n"  {
            fprintf (yyout, "\n");
        };

.       {
            ECHO;
        };

%% /***************************************************************************/

/**
 * \brief   The main function of this lexer.
 * \return  0x0
 *
 * This lexer will replace any carriage return linebreaks with simple newline
 * whitespaces.
 *
 * This lexer always returns with 0x0.
 */

int main (void)
{
    yylex ();
    yylex_destroy ();

    return 0x0;
}

/******************************************************************************/
